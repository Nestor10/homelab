# What are we trying to do here  
There is a thing called a Quadlete 
I found out about it here https://docs.podman.io/en/stable/markdown/podman-systemd.unit.5.html#kube-units-kube

So the idea here is to generate a basical kuberneties yaml that represents a service. Provide to it a config map, secrets, network, loging and any other configurations we need.
Additionally the config.map probably need to be generated via some templating or ansible podmand / kuberneties task.

Here is some folks talking about it

https://github.com/containers/podman/issues/12965
https://github.com/containers/podman/issues/12965#issuecomment-1770567894

Question how do we run a Quadlet
Answer, we probably can as we are on 4.3 podman and this was introduced in 4.4.
There is an ansible solution here https://computingforgeeks.com/how-to-install-podman-on-debian/.

Time to learn more about ansible and roles.
