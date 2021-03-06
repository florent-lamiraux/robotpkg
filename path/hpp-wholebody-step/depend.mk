# robotpkg depend.mk for:	path/hpp-wholebody-step
# Created:			Antonio El Khoury on Thu, 26 Sep 2013
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
HPP_WHOLEBODY_STEP_DEPEND_MK:=	${HPP_WHOLEBODY_STEP_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		hpp-wholebody-step
endif

ifeq (+,$(HPP_WHOLEBODY_STEP_DEPEND_MK)) # ----------------------------------

PREFER.hpp-wholebody-step?=	robotpkg

DEPEND_USE+=		hpp-wholebody-step

DEPEND_ABI.hpp-wholebody-step?=	hpp-wholebody-step>=4.9.0
DEPEND_DIR.hpp-wholebody-step?=	../../path/hpp-wholebody-step

SYSTEM_SEARCH.hpp-wholebody-step=										\
	'include/hpp/wholebody-step/static-stability-constraint.hh'						\
	'lib/cmake/hpp-wholebody-step/hpp-wholebody-stepConfigVersion.cmake:/PACKAGE_VERSION/s/[^0-9.]//gp'	\
	'lib/libhpp-wholebody-step.so'										\
	'lib/pkgconfig/hpp-wholebody-step.pc:/Version/s/[^0-9.]//gp'

endif # HPP_WHOLEBODY_STEP_DEPEND_MK ----------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
