{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "tasty-lua"; version = "0.1.1"; };
      license = "MIT";
      copyright = "Albert Krewinkel <albert+hslua@zeitkraut.de>";
      maintainer = "albert+hslua@zeitkraut.de";
      author = "Albert Krewinkel";
      homepage = "https://github.com/hslua/tasty-lua";
      url = "";
      synopsis = "Write tests in Lua, integrate into tasty.";
      description = "Allow users to define tasty tests from Lua.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.file-embed)
          (hsPkgs.hslua)
          (hsPkgs.tasty)
          (hsPkgs.text)
          ];
        };
      tests = {
        "test-tasty-lua" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.hslua)
            (hsPkgs.tasty)
            (hsPkgs.tasty-lua)
            (hsPkgs.tasty-hunit)
            ];
          };
        };
      };
    }