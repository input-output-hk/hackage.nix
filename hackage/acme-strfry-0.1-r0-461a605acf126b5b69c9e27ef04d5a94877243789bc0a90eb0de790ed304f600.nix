{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "acme-strfry";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Elliott Hird";
      author = "Elliott Hird";
      homepage = "https://github.com/ehird/acme-strfry";
      url = "";
      synopsis = "A binding to the glibc strfry function.";
      description = "This library provides a simple interface to the glibc @strfry@\nfunction, addressing the perennial programming quandary: \\\"How do I\ntake good data in string form and painlessly turn it into garbage?\\\"\n\nFor more information, consult the glibc documentation:\n<http://www.gnu.org/software/libc/manual/html_node/strfry.html>\n\nBoth @String@ and @ByteString@ interfaces are offered, as well as\nthe raw FFI binding.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
        ];
      };
    };
  }