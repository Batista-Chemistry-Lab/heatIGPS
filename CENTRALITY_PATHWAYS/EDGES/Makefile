################################################################################
#LIBS += -L/usr/local/opt/lapack/lib/ -llapack 
#INCLUDES = -I/usr/local/opt/lapack/include

################################################################################
ifeq ($(intel),1)
  FC    = ifort
  FLAGS+= -O3
else
  FC    = gfortran
  FLAGS+= -cpp -ffree-line-length-0
#  LIBS += -L/usr/lib -llapack
endif


################################################################################

edges: edges.f90 
	$(FC) $< -o $@ $(FLAGS) ${INCLUDES} $(LIBS)

clean:
	rm -rf edges

################################################################################

