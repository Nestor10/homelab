# What are we trying to do here  
There is a thing called a Quadlete 
I found out about it here https://docs.podman.io/en/stable/markdown/podman-systemd.unit.5.html#kube-units-kube

The idea is to generate a basical kuberneties yaml that represents a service. Use a .kube file to get systemd generators to pick up this yaml and make it into a service for me.

One of the strong benefits of podman is its seemless integration with systemd. 

Here is some folks talking about it:
https://github.com/containers/podman/issues/12965#issuecomment-1770567894

Question how do we run a Quadlet
Answer, we probably can't on vanilla debian 12 as stable privides 4.3 podman and this was introduced in 4.4/4.5 (i have seen both mentioned online as the version the introduces quadlet).

Debian does float a podman version in testing and that is likely the easiest solution and is implimented in our podman role.

There are a number of features that don't exist natively in kubernetes (require plugins) or some things that just didnt work out like I wanted. For instance, I never was able to get podman volumes working with kube files, we cannot use config.map to pass values to a volume. So, we jinji templet these. For transmission, we need access to the tun device on local host. Well, its a lot easier to do with a .container quadlet as opposed to .kube and kube yaml. 

