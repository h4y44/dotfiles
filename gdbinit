source /usr/share/peda/peda.py
source ~/.gdb/Pwngdb/pwngdb.py
source ~/.gdb/Pwngdb/angelheap/gdbinit.py

define hook-run
python
import angelheap
angelheap.init_angelheap()
end
end

set disassembly-flavor intel
