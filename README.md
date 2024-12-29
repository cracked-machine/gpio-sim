

**IMPORTANT**: You MUST run `modprobe gpio-sim` on the host before running this container

```
sudo ./setup.sh
source do_cmake.sh && clean && build
build/gpio_sim_example
sudo ./teardown.sh
```