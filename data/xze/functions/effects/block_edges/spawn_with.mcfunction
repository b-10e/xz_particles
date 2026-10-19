# make a ping sound and draw a particle cube around the block
$execute align xyz run particle $(particle) ~0 ~0.05 ~0 0 0 1000000 0.0000001 0
$execute align xyz run particle $(particle) ~0 ~0.05 ~1 0 0 -1000000 0.0000001 0
$execute align xyz run particle $(particle) ~0 ~1.05 ~1 0 0 -1000000 0.0000001 0
$execute align xyz run particle $(particle) ~0 ~1.05 ~0 0 0 1000000 0.0000001 0
$execute align xyz run particle $(particle) ~0 ~0.05 ~1 0 1000000 0 0.0000001 0
$execute align xyz run particle $(particle) ~0 ~1.05 ~1 0 -1000000 0 0.0000001 0
$execute align xyz run particle $(particle) ~0 ~1.05 ~0 0 -1000000 0 0.0000001 0
$execute align xyz run particle $(particle) ~0 ~0.05 ~0 0 1000000 0 0.0000001 0

$execute align xyz run particle $(particle) ~1 ~0.05 ~1 0 0 -1000000 0.0000001 0
$execute align xyz run particle $(particle) ~1 ~0.05 ~0 0 0 1000000 0.0000001 0
$execute align xyz run particle $(particle) ~1 ~1.05 ~0 0 0 1000000 0.0000001 0
$execute align xyz run particle $(particle) ~1 ~1.05 ~1 0 0 -1000000 0.0000001 0
$execute align xyz run particle $(particle) ~1 ~1.05 ~1 0 -1000000 0 0.0000001 0
$execute align xyz run particle $(particle) ~1 ~0.05 ~1 0 1000000 0 0.0000001 0
$execute align xyz run particle $(particle) ~1 ~0.05 ~0 0 1000000 0 0.0000001 0
$execute align xyz run particle $(particle) ~1 ~1.05 ~0 0 -1000000 0 0.0000001 0

$execute align xyz run particle $(particle) ~1 ~1.05 ~1 -1000000 0 0 0.0000001 0
$execute align xyz run particle $(particle) ~0 ~1.05 ~1 1000000 0 0 0.0000001 0
$execute align xyz run particle $(particle) ~0 ~1.05 ~0 1000000 0 0 0.0000001 0
$execute align xyz run particle $(particle) ~1 ~1.05 ~0 -1000000 0 0 0.0000001 0
$execute align xyz run particle $(particle) ~0 ~0.05 ~0 1000000 0 0 0.0000001 0
$execute align xyz run particle $(particle) ~1 ~0.05 ~0 -1000000 0 0 0.0000001 0
$execute align xyz run particle $(particle) ~1 ~0.05 ~1 -1000000 0 0 0.0000001 0
$execute align xyz run particle $(particle) ~0 ~0.05 ~1 1000000 0 0 0.0000001 0