SHELL=/bin/sh
BENCHMARK=ua
BENCHMARKU=UA

include ../config/make.def

include ../sys/make.common

OBJS = primary.bc \
       ${COMMON}/print_results.bc \
       ${COMMON}/c_timers.bc \
       ${COMMON}/wtime.bc

PRIMARIES = ua.bc convect.bc diffuse.bc adapt.bc move.bc mason.bc \
			precond.bc utils.bc transfer.bc verify.bc  setup.bc


# npbparams.h is included by header.h
# The following rule should do the trick but many make programs (not gmake)
# will do the wrong thing and rebuild the world every time (because the
# mod time on header.h is not changed. One solution would be to 
# touch header.h but this might cause confusion if someone has
# accidentally deleted it. Instead, make the dependency on npbparams.h
# explicit in all the lines below (even though dependence is indirect). 

# header.h: npbparams.h

${PROGRAM}: config ${OBJS}
	${CLINK} ${CLINKFLAGS} -o ${PROGRAM} ${OBJS} ${C_LIB}

%.bc: %.c header.h npbparams.h
	${CCOMPILE} $<

primary.bc: ${PRIMARIES}
	${CLINK_R} ${CLINKFLAGS} -o primary.bc ${PRIMARIES}

ua.bc:        ua.c       header.h npbparams.h
setup.bc:     setup.c    header.h npbparams.h
convect.bc:   convect.c  header.h npbparams.h
adapt.bc:     adapt.c    header.h npbparams.h
move.bc:      move.c     header.h npbparams.h
diffuse.bc:   diffuse.c  header.h npbparams.h
mason.bc:     mason.c    header.h npbparams.h
precond.bc:   precond.c  header.h npbparams.h
transfer.bc:  transfer.c header.h npbparams.h
utils.bc:     utils.c    header.h npbparams.h
verify.bc:    verify.c   header.h npbparams.h

clean:
	- rm -f *.bc *~ mputil*
	- rm -f npbparams.h core
