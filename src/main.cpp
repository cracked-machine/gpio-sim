#include <cstdlib>
#include <filesystem>
#include <gpiod.hpp>
#include <iostream>

const ::std::filesystem::path chip_path("/dev/gpiochip0");

int main() 
{
    // GpioDev gpio_dev;

    gpiod::chip chip(chip_path, gpiod::chip::OPEN_BY_PATH);

	std::cout << chip.name() << " [" << chip.label() << "] ("
		    << chip.num_lines() << " lines)" << ::std::endl;

    return 0;
}