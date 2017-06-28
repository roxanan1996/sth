#include <stdio.h>
#include <vector>
#define NMax 100010

using namespace std;

int N, M;
int Parent[NMax];
vector<int> ad[NMax];

void Solve( int N, const vector<int> & ad[NMax], int * Parent ) {

    // TODO

}

void Print( int N, const vector<int> & ad[NMax], int * Parent ) {

    // TODO

}

int main() {

    freopen("dijkstra.in", "r", stdin);
    froepen("djikstra.out", "w", stdout);

    scanf("%d%d", &N, &M);

    while ( M -- ) {
        int x, y;
        scanf("%d%d", &x, &y);
        ad[x].push_back(y);
        ad[y].push_back(x);
    }

    Solve(N, ad, Parent);
    Print(N, ad, Parent);

    return 0;
}
