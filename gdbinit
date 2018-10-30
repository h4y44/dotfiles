source /usr/share/peda/peda.py
source /usr/share/pwngdb/pwngdb.py
source /usr/share/pwngdb/angelheap/gdbinit.py

define hook-run
python
import angelheap
angelheap.init_angelheap()
end
end
