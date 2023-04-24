#include <zephyr/kernel.h>
#include <zephyr/sys/printk.h>

void main(void)
{
    printk("Running on a %s board.\r\n", CONFIG_BOARD);
}

