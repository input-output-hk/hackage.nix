{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { examples = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "netwire-input-glfw";
        version = "0.0.3";
      };
      license = "MIT";
      copyright = "Pavel Krajcevski, 2014";
      maintainer = "Krajcevski@gmail.com";
      author = "Pavel Krajcevski";
      homepage = "https://www.github.com/Mokosha/netwire-input-glfw";
      url = "";
      synopsis = "GLFW instance of netwire-input";
      description = "This package contains the necessary glue to allow the use\nof wires from the netwire-input package. In general, the types\nassociated here should be used only sparingly to plumb the input\nstate through your netwire program. Otherwise, the state should\nnot be modified directly.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.netwire-input)
          (hsPkgs.containers)
          (hsPkgs.GLFW-b)
          (hsPkgs.stm)
          (hsPkgs.mtl)
        ];
      };
      exes = {
        "glfw-input-example" = {
          depends  = pkgs.lib.optionals (flags.examples) [
            (hsPkgs.base)
            (hsPkgs.netwire)
            (hsPkgs.netwire-input)
            (hsPkgs.netwire-input-glfw)
            (hsPkgs.OpenGL)
            (hsPkgs.GLFW-b)
            (hsPkgs.transformers)
            (hsPkgs.array)
            (hsPkgs.bytestring)
            (hsPkgs.mtl)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
          ];
        };
      };
    };
  }