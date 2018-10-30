{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { with-posix = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "shellmate";
        version = "0.3.4.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "anton@ekblad.cc";
      author = "Anton Ekblad";
      homepage = "https://github.com/valderman/shellmate";
      url = "";
      synopsis = "Simple interface for shell scripting in Haskell.";
      description = "Monadic EDSL for writing cross-platform shell scripts in Haskell.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.bytestring)
          (hsPkgs.filepath)
          (hsPkgs.process)
          (hsPkgs.directory)
          (hsPkgs.temporary)
        ] ++ pkgs.lib.optional (flags.with-posix || !system.isWindows) (hsPkgs.unix);
      };
    };
  }