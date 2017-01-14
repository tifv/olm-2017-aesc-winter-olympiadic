size(3cm);

int n = 4;

pen grid = defaultpen;

fill((1,0)--(2,0)--(2,1)--(1,1)--cycle, gray(0.85));

for (int i = 0; i <= n; ++i) {
    draw((0,i)--(n,i), grid);
    draw((i,0)--(i,n), grid);
}

for (int i = 0; i < n; ++i) {
    for (int j = 0; j < n; ++j) {
        string l = "$+$";
        if (i == 0 && j == 1)
            l = "$-$";
        label(l, (0.5, 0.5) + (j, i));
    }
}

