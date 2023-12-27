import os
import pyprocar
cwd = os.getcwd()
directory = os.path.join(cwd, "02_NSCF")




parser = pyprocar.io.Parser(code = 'vasp', dir=directory)
ebs = parser.ebs
efermi = ebs.efermi
print(efermi)
kpath = ebs.kpath
print(kpath)
print(kpath.nsegments) # The number of kpath segments
print(kpath.knames)
print(kpath.tick_positions)


pyprocar.bandsplot(code='vasp',dirname=directory,mode='parametric',elimit=[-15,10],cmap='jet',
kticks=[0, 9, 19, 29, 39],knames=["L", "G","X","K","G"],savefig="bs_Silicon.png" )
