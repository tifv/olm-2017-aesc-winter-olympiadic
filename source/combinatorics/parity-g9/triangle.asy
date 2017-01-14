size(6cm);

pair u = dir(-120), v = dir(-60);

int n = 5;

pen grid = defaultpen;

for (int i = 0; i < n; ++i) {
    draw((v*i) -- (v*i + u*(n-i)), grid);
    draw((u*i) -- (u*i + v*(n-i)), grid);
    draw((u*(n-i)) -- (v*(n-i)),   grid);
}

int l = 1;

for (int i = 0; i < n; ++i) {
    for (int j = 0; j <= i; ++j) {
        label("$" + string(l) + "$", (u+v)/3 + u*i + (v-u)*j);
        l += 2;
    }
    l -= 1;
}

l = 3;
for (int i = 0; i < n-1; ++i) {
    for (int j = 0; j <= i; ++j) {
        label("$" + string(l) + "$", 2(u+v)/3 + u*i + (v-u)*j);
        l += 2;
    }
    l += 1;
}

