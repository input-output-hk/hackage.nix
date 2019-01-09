{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.14";
      identifier = { name = "FloatingHex"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "Levent Erkok";
      maintainer = "erkokl@gmail.com";
      author = "Levent Erkok";
      homepage = "";
      url = "";
      synopsis = "Read and write hexadecimal floating point numbers";
      description = "Read and write hexadecimal floating point numbers. Provides a quasiquoter for\nentering hex-float literals, and a function for printing them in hexadecimal.\n\nSee: <http://www.open-std.org/jtc1/sc22/wg14/www/docs/n1256.pdf>, pages 57-58.\nWe slightly diverge from the standard and do not allow for the \"floating-suffix,\"\nas the type inference of Haskell makes this unnecessary.\n\nFor details, please see: <http://github.com/LeventErkok/FloatingHex/>";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.template-haskell) ]; };
      };
    }