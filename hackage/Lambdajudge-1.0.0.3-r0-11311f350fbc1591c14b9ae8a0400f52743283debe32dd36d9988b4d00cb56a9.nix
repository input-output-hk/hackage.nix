{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "Lambdajudge"; version = "1.0.0.3"; };
      license = "MIT";
      copyright = "";
      maintainer = "ankitkumar.itbhu@gmail.com, venu.gangireddy@gmail.com, safalpandita@gmail.com";
      author = "Ankit Kumar, Venugopal Reddy,  Safal Pandita";
      homepage = "http://venugangireddy.github.io/Lambdajudge/";
      url = "";
      synopsis = "A library to easily host Haskell based programming competitions";
      description = "A library to easily host Haskell based programming competitions";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.mtl)
          (hsPkgs.hspec)
          (hsPkgs.filepath)
          (hsPkgs.process)
          ];
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.hspec)
            (hsPkgs.mtl)
            (hsPkgs.filepath)
            (hsPkgs.process)
            ];
          };
        };
      };
    }