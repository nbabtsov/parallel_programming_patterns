SHELL=/bin/sh
BENCHMARK=dc
BENCHMARKU=DC

include ../config/make.def

include ../sys/make.common

OBJS = primary.bc \
	${COMMON}/c_print_results.bc  \
	${COMMON}/c_timers.bc \
	${COMMON}/c_wtime.bc

PRIMARIES = adc.bc dc.bc extbuild.bc rbt.bc jobcntl.bc 

# npbparams.h is provided for backward compatibility with NPB compilation
# header.h: npbparams.h

${PROGRAM}: config ${OBJS} 
	${CLINK} ${CLINKFLAGS} -o ${PROGRAM} ${OBJS} ${C_LIB}

%.bc: %.c npbparams.h macrodef.h
	$(CCOMPILE) $<

primary.bc: ${PRIMARIES}
	${CLINK_R} ${CLINKFLAGS} -o primary.bc ${PRIMARIES}

adc.bc:      adc.c npbparams.h
dc.bc:       dc.c adcc.h adc.h macrodef.h npbparams.h
extbuild.bc: extbuild.c adcc.h adc.h macrodef.h npbparams.h
rbt.bc:      rbt.c adcc.h adc.h rbt.h macrodef.h npbparams.h
jobcntl.bc:  jobcntl.c adcc.h adc.h macrodef.h npbparams.h

clean:
	- rm -f *.bc 
	- rm -f npbparams.h core
	- rm -f {../,}ADC.{logf,view,dat,viewsz,groupby,chunks}.* 

