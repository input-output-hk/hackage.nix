{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "QuickAnnotate"; version = "0.6"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "sh.najd@gmail.com";
      author = "Shayan Najd";
      homepage = "http://code.haskell.org/QuickAnnotate/";
      url = "";
      synopsis = "Annotation Framework";
      description = "A framework introducing annotations by preprocessing. For using it, it is enough to derive 'QuickAnnotate.Annotatable' and then use the preprocessor (qapp). The package contains an example demonstrating this procedure.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) ]; };
      exes = {
        "qapp" = { depends = [ (hsPkgs.base) (hsPkgs.haskell-src-exts) ]; };
        };
      };
    }