{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "process-iterio"; version = "0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Greg Fitzgerald <garious@gmail.com>";
      author = "Greg Fitzgerald <garious@gmail.com>";
      homepage = "https://github.com/garious/process-iterio";
      url = "";
      synopsis = "IterIO Process Library";
      description = "IterIO combinators for the Process library";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.process)
          (hsPkgs.iterIO)
          (hsPkgs.transformers)
          (hsPkgs.bytestring)
          (hsPkgs.cpphs)
          ];
        };
      tests = {
        "Test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.process)
            (hsPkgs.iterIO)
            (hsPkgs.transformers)
            (hsPkgs.bytestring)
            (hsPkgs.cpphs)
            ];
          };
        };
      };
    }