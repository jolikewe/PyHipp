#!/bin/bash

echo "Number of hkl files"
find . -name "*.hkl" | grep -v -e spiketrain -e mountains | wc -l

echo "Number of mda files"
find mountains -name "firings.mda" | wc -l


echo "Start Times"
echo "==> rplpl-slurm.queue1-dy-r5dn-2xlarge-1.1.out <=="
head -n 1 rplpl*.out
echo ""
echo "==> rplspl-slurm.queue1-dy-r5dn-2xlarge-1.2.out <=="
head -n 1 rplspl*.out


echo "End Times"

echo "==> rplpl-slurm.queue1-dy-r5dn-2xlarge-1.1.out <=="
tail -n 2 rplpl*.out
echo ""
echo "==> rplspl-slurm.queue1-dy-r5dn-2xlarge-1.2.out <=="
tail -n 2 rplspl*.out
