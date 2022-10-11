from unittest.mock import patch
from gvm.connections import UnixSocketConnection
from gvm.protocols.latest import Gmp

path='/run/gvmd/gvmd.sock'
connection = UnixSocketConnection(path=path)
with Gmp(connection=connection) as gmp:
    gmp.authenticate(username='admin', password='admin')

    version = gmp.get_version()
    print(version)
