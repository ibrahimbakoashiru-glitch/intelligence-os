// Intelligence OS SE Kernel v0.1
// Minimal, calm, predictable, original

void kernel_main() {
    const char* msg = "Intelligence OS SE Kernel v0.1 - Original";
    char* video = (char*)0xb8000;

    for (int i = 0; msg[i]; i++) {
        video[i*2] = msg[i];       // character
        video[i*2+1] = 0x0F;       // white on black
    }

    while (1) {}                   // silent infinite loop
}
