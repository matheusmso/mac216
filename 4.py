from sys import stdin
ans = ""
for line in stdin:
    words = line.split()
    ans += "{"
    for word in words[:-1]:
        ans +=  word + ","
    ans += words[2] + "},"
print(ans[:-1])


