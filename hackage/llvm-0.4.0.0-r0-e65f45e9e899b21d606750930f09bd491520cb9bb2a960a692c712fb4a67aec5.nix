{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { bytestring-in-base = true; };
    package = {
      specVersion = "1.2.3";
      identifier = { name = "llvm"; version = "0.4.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Lennart Augustsson <lennart@augustsson.net>";
      author = "Lennart Augustsson";
      homepage = "http://www.serpentine.com/blog/software/llvm/";
      url = "";
      synopsis = "Bindings to the LLVM compiler toolkit";
      description = "Bindings to the LLVM compiler toolkit";
      buildType = "Configure";
      };
    components = {
      "library" = {
        depends = if flags.bytestring-in-base
          then [ (hsPkgs.base) ]
          else [ (hsPkgs.base) (hsPkgs.bytestring) (hsPkgs.mtl) ];
        };
      };
    }