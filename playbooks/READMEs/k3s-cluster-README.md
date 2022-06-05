# k3s-cluster -- Automated build of HA k3s Cluster with `kube-vip` and MetalLB

This playbook will build an HA Kubernetes cluster with `k3s`, `kube-vip` and MetalLB via `ansible`.

This is based on the work from [this fork](https://github.com/212850a/k3s-ansible) which is based on the work from [k3s-io/k3s-ansible](https://github.com/k3s-io/k3s-ansible). It uses [kube-vip](https://kube-vip.chipzoller.dev/) to create a load balancer for control plane, and [metal-lb](https://metallb.universe.tf/installation/) for its service `LoadBalancer`.

If you want more context on how this works, see:

📄 [Documentation](https://docs.technotim.live/posts/k3s-etcd-ansible/) (including example commands)

📺 [Video](https://www.youtube.com/watch?v=CbkEWcUZ7zM)

## ⚙️ Kube Config

To copy your `kube config` locally so that you can access your **Kubernetes** cluster run:

```bash
scp debian@master_ip:~/.kube/config ~/.kube/config
```

* [k3s-io/k3s-ansible](https://github.com/k3s-io/k3s-ansible)
* [geerlingguy/turing-pi-cluster](https://github.com/geerlingguy/turing-pi-cluster)
* [212850a/k3s-ansible](https://github.com/212850a/k3s-ansible) 