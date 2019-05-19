{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = { name = "shellmet"; version = "0.0.1"; };
      license = "MPL-2.0";
      copyright = "2019 Kowainik";
      maintainer = "xrom.xkov@gmail.com";
      author = "Kowainik";
      homepage = "https://github.com/kowainik/shellmet";
      url = "";
      synopsis = "Out of the shell solution for scripting in Haskell";
      description = "Shellmet provides easy and convenient way to call shell commands from Haskell programs";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.process) (hsPkgs.text) ];
        };
      exes = {
        "readme" = {
          depends = [ (hsPkgs.base) (hsPkgs.shellmet) (hsPkgs.text) ];
          build-tools = [
            (hsPkgs.buildPackages.markdown-unlit or (pkgs.buildPackages.markdown-unlit))
            ];
          };
        };
      tests = {
        "shellmet-test" = { depends = [ (hsPkgs.base) (hsPkgs.shellmet) ]; };
        };
      };
    }