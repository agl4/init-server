#!/bin/sh

# Add initial config when it is not already there: 
if [ -e /etc/ssh/sshd_config ] ; then
    grep 'scripts-init-server$' /etc/ssh/sshd_config || {
        cp share/sshd_config /etc/ssh/sshd_config
    }
else 
    cp share/sshd_config /etc/ssh/sshd_config
fi

# Trust user CA when is not already there: 
if [ -e /etc/ssh/TrustedUserCAKeys ] ; then
    grep 'scripts-init-server$' /etc/ssh/TrustedUserCAKeys || {
        cp share/TrustedUserCAKeys /etc/ssh/TrustedUserCAKeys
    }
else 
    cp share/TrustedUserCAKeys /etc/ssh/TrustedUserCAKeys
fi
