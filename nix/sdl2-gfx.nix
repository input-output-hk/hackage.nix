{
  "0.2" = {
    sha256 = "8c1e10b7a675d782cd650820c75c4ef9225718ad6aaa3f8db02e869b7720c50d";
    revisions = {
      r0 = {
        nix = import ../hackage/sdl2-gfx-0.2-r0-c9924f0376aef65877e485e39792e289bad4e4f7f8a80e2885994dd5e13e79a6.nix;
        revNum = 0;
        sha256 = "c9924f0376aef65877e485e39792e289bad4e4f7f8a80e2885994dd5e13e79a6";
        };
      r1 = {
        nix = import ../hackage/sdl2-gfx-0.2-r1-fb42c8a2f9fc4d272a8ace7eadb755dff585a26541141ba1fbfa1d9c83d3aabd.nix;
        revNum = 1;
        sha256 = "fb42c8a2f9fc4d272a8ace7eadb755dff585a26541141ba1fbfa1d9c83d3aabd";
        };
      default = "r1";
      };
    };
  "0.3.0.0" = {
    sha256 = "bcab7e1f8f7a60dec2db07c6680eb3f16e88511829a6ef9cd82ddce91c293565";
    revisions = {
      r0 = {
        nix = import ../hackage/sdl2-gfx-0.3.0.0-r0-b849bffb204f461d0fac63eaadc91214e0dff48a6400f24f66a7c6b9611599f1.nix;
        revNum = 0;
        sha256 = "b849bffb204f461d0fac63eaadc91214e0dff48a6400f24f66a7c6b9611599f1";
        };
      default = "r0";
      };
    };
  }