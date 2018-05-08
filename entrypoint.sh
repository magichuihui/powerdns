#!/bin/sh
/usr/sbin/pdns_recursor --daemon=no --loglevel=9
/usr/sbin/pdns_server --daemon=no --guardian=no --loglevel=9
