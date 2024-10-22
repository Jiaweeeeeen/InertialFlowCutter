# G=$1
# ./metis_order.sh $G >> order_running_time.csv
# for cutters in 4 8 12 16; do python3 inertialflowcutter_order.py $G $cutters >> order_running_time.csv; done
# python3 inertialflow_order.py $G >> order_running_time.csv
# for cutters in 3 20 100; do python3 flowcutter_order.py $G $cutters >> order_running_time.csv; done
# python3 kahip_order.py $G >> order_running_time.csv

for G in NY BAY COL FLA NW NE CAL LKA E W CTR USA EUR;
do python3 flowcutter_order.py $G 20 >> order_running_time.csv; done

