#!/bin/sh
/usr/sbin/pdns_recursor --loglevel=9
/usr/sbin/pdns_server --daemon=no --guardian=no --loglevel=9
