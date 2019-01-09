{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "Salsa"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2007-2008 Andrew Appleyard";
      maintainer = "andrew.appleyard@gmail.com";
      author = "Andrew Appleyard";
      homepage = "http://haskell.org/haskellwiki/Salsa";
      url = "";
      synopsis = "A .NET Bridge for Haskell";
      description = "Salsa is an experimental Haskell library and code generator that allows\nHaskell programs to host the .NET runtime and interact with .NET libraries.\nIt uses type families extensively to provide a type-safe mapping of the .NET\nobject model in the Haskell type system.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.Win32) (hsPkgs.bytestring) ];
        libs = [ (pkgs."oleaut32") (pkgs."ole32") ];
        };
      };
    }