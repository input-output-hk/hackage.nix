{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { use-libcpp = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "cppfilt"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Georg Rudoy";
      maintainer = "0xd34df00d@gmail.com";
      author = "Georg Rudoy";
      homepage = "https://github.com/0xd34df00d/cppfilt#readme";
      url = "";
      synopsis = "Bindings for C++ demangling routines";
      description = "Please see the README on Github at <https://github.com/0xd34df00d/cppfilt#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.bytestring) ];
        libs = if flags.use-libcpp || system.isOsx
          then [ (pkgs."c++") ]
          else [ (pkgs."stdc++") ];
        };
      tests = {
        "cppfilt-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cppfilt)
            (hsPkgs.hspec)
            ];
          };
        };
      benchmarks = {
        "cppfilt-benchmarks" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cppfilt)
            (hsPkgs.criterion)
            ];
          };
        };
      };
    }