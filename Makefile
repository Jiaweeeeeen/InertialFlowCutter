# This makefile was automatically generated. Run ./generate_make_file to regenerate the file.
CC=g++
AR=ar
# CFLAGS=-Wall -DNDEBUG -march=native -ffast-math -std=c++11 -O3 -DROUTING_KIT_NO_ALIGNED_ALLOC -fPIC -Iinclude
# LDFLAGS=
# OMP_CFLAGS=-fopenmp
# OMP_LDFLAGS=-fopenmp

LIBOMP_PATH=/opt/homebrew/opt/libomp
CFLAGS=-Wall -DNDEBUG -march=native -ffast-math -std=c++17 -O3 -DROUTING_KIT_NO_ALIGNED_ALLOC -fPIC -Iinclude -I$(LIBOMP_PATH)/include
LDFLAGS=
OMP_CFLAGS=-Xpreprocessor -fopenmp
OMP_LDFLAGS=-L$(LIBOMP_PATH)/lib -lomp

# Add the OpenMP flags to CFLAGS and LDFLAGS
CFLAGS += $(OMP_CFLAGS)
LDFLAGS += $(OMP_LDFLAGS)

all: bin/console

build/file_utility.o: src/file_utility.cpp src/file_utility.h generate_make_file
	@mkdir -p build
	$(CC) $(CFLAGS)  -c src/file_utility.cpp -o build/file_utility.o

build/console.o: src/array_id_func.h src/back_arc.h src/chain.h src/connected_components.h src/console.cpp src/contraction_graph.h src/count_range.h src/csv.h src/cut.h src/dijkstra.h src/dinic.h src/edmond_karp.h src/fancy_input.h src/file_utility.h src/filter.h src/flow_cutter.h src/flow_cutter_accelerated.h src/flow_cutter_config.h src/flow_cutter_dinic.h src/ford_fulkerson.h src/geo_pos.h src/heap.h src/histogram.h src/id_func.h src/id_func_traits.h src/id_multi_func.h src/id_sort.h src/id_string.h src/inertial_flow.h src/inverse_vector.h src/io_helper.h src/list_graph.h src/min_fill_in.h src/min_max.h src/multi_arc.h src/my_kahip.h src/node_flow_cutter.h src/permutation.h src/preorder.h src/range.h src/separator.h src/sort_arc.h src/timer.h src/timestamp_id_func.h src/tiny_id_func.h src/tree_node_ranking.h src/triangle_count.h src/union_find.h src/vector_io.h generate_make_file
	@mkdir -p build
	$(CC) $(CFLAGS)  -c src/console.cpp -o build/console.o

build/geo_pos.o: src/array_id_func.h src/file_utility.h src/geo_pos.cpp src/geo_pos.h src/id_func.h src/id_func_traits.h src/io_helper.h src/tiny_id_func.h src/union_find.h generate_make_file
	@mkdir -p build
	$(CC) $(CFLAGS)  -c src/geo_pos.cpp -o build/geo_pos.o

build/fancy_input.o: src/fancy_input.cpp src/fancy_input.h generate_make_file
	@mkdir -p build
	$(CC) $(CFLAGS)  -c src/fancy_input.cpp -o build/fancy_input.o

build/list_graph.o: src/array_id_func.h src/chain.h src/count_range.h src/file_utility.h src/id_func.h src/id_func_traits.h src/id_multi_func.h src/id_sort.h src/io_helper.h src/list_graph.cpp src/list_graph.h src/multi_arc.h src/permutation.h src/range.h src/sort_arc.h src/tiny_id_func.h generate_make_file
	@mkdir -p build
	$(CC) $(CFLAGS)  -c src/list_graph.cpp -o build/list_graph.o

build/permutation.o: src/array_id_func.h src/file_utility.h src/id_func.h src/id_func_traits.h src/io_helper.h src/permutation.cpp src/permutation.h src/tiny_id_func.h generate_make_file
	@mkdir -p build
	$(CC) $(CFLAGS)  -c src/permutation.cpp -o build/permutation.o

bin/console: build/console.o build/fancy_input.o build/file_utility.o build/geo_pos.o build/list_graph.o build/permutation.o
	@mkdir -p bin
	$(CC) $(LDFLAGS) build/console.o build/fancy_input.o build/file_utility.o build/geo_pos.o build/list_graph.o build/permutation.o -lm -lreadline -pthread  -o bin/console

