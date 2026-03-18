/*
    Inochi2D C ABI

    Copyright © 2023, Inochi2D Project
    Distributed under the 2-Clause BSD License, see LICENSE file.
    
    Authors: Luna Nielsen, seagetch
*/
module binding.render;

import binding;

extern(C) export:

size_t inViewportDataLength() {
    return Inochi2D.inViewportDataLength();
}

void inDumpViewport(ubyte* dumpTo, size_t length) {
    if (dumpTo is null || length == 0) {
        return;
    }

    auto target = dumpTo[0 .. length];
    Inochi2D.inDumpViewport(target);
}
