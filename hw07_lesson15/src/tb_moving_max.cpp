#include <cstring>
#include <cstdio>
#include <climits>
#include <algorithm>
#include "moving_max.h"
#include "test_vectors.h"

int main() {
    int errors = 0;

    for (int t = 0; t < N_VECTORS; t++) {
        int out_data[N_SAMPLES] = {0};
        int in_data[N_SAMPLES] = {0};
        int ref[N_SAMPLES] = {0};

        
        memcpy(in_data, TEST_VEC[t], sizeof(in_data));
        moving_max(in_data, out_data);

         // эталон
        for (int n = 0; n < N_SAMPLES; n++) {
            int m = INT_MIN;
            for (int j = std::max(0, n-7); j <= n; j++) {
                if (in_data[j] > m) m = in_data[j];
            }
            ref[n] = m;
        }


        for (int n = 0; n < N_SAMPLES; n++) {
            if (out_data[n] != ref[n]) {
                errors++;
                printf("%s n=%d: got %d, want %d\n", VEC_NAME[t], n, out_data[n], ref[n]);
                break;
            }
        }

    }

    printf(errors ? "FAILED\n" : "PASSED\n");
    return errors ? 1 : 0;

}