#include <stdio.h>
#define NMax 110

#define NO_ROUTE -1

int N;

int Parent[NMax][NMax];
int Cost[NMax][NMax];

void Floyd_Warshal( int Cost[][NMax], int Parent[][NMax] ) {

    // TODO

}

void Print( int Cost[][NMax], int Parent[][NMax] ) {

    // TODO

}

int main() {

    freopen("floyd.in", "r", stdin);
    freopen("floyd.out", "w", stdout);

    scanf("%d", &N);

    for ( int i = 1; i <= N; ++ i )
        for ( int j = 1; j <= N; ++ j )
            scanf("%d", &Cost[i][j]);

    Floyd_Warshal(Cost, Parent);
    Print(Cost, Parent);

    return 0;
}
