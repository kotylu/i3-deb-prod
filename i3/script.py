#/usr/bin/env python3
import subprocess


result = str(subprocess.run(["acpi", "-i"], stdout=subprocess.PIPE).stdout)
splitted = result.split('\\n')

#print()
#for info in splitted:
    #print(info)
#print()

general = splitted[0]
gen_splitted = general.split()
#for gen_s in gen_splitted:
    #print(gen_s)

if "100%" in general:
    print("battery is fully charged")
else:
    if "dis" in gen_splitted[2].lower():
        charge = " DIS "
        state = "remainning"
    else:
        charge = " CHR "
        state = "until 100%"
    final = ""
    final += charge
    final += str(gen_splitted[3][0:-1])
    final += " ("
    final += str(gen_splitted[4])
    final += ") "
    final += str(state)
    #print()
    print(final)
