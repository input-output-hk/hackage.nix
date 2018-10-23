{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "linux-mount";
        version = "0.2.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "© 2013-2014 Nicola Squartini";
      maintainer = "Nicola Squartini <tensor5@gmail.com>";
      author = "Nicola Squartini";
      homepage = "https://github.com/tensor5/linux-mount";
      url = "";
      synopsis = "Mount and unmount filesystems";
      description = "Bindings to the Linux\n@<http://man7.org/linux/man-pages/man2/mount.2.html mount()>@ and\n@<http://man7.org/linux/man-pages/man2/umount.2.html umount()>@ syscalls.";
      buildType = "Simple";
    };
    components = {
      "linux-mount" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
        ];
      };
    };
  }