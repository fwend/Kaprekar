import std.conv, std.regex, std.string, std.stdio;

void main(string[] a) {
    try {
        auto n = to!uint(a[1]);
        writeln();
        writeln(n, isKaprekar(n) ? " is kaprekar" : " is NOT kaprekar\n");
    } catch (Throwable e) {
        writeln("\nUsage: kaprekar [natural number]\n");
    }
}

bool isKaprekar(in uint n) {
    ulong powr = n ^^ 2UL;
    ulong tens = 10, r, l;
    while (r < n) {
        r = powr % tens;
        l = powr / tens;
        if (r && l + r == n)
            return true;
        tens *= 10;
    }
    return false;
}