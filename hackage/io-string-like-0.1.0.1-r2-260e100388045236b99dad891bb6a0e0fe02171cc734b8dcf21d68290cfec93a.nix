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
      specVersion = "1.10";
      identifier = {
        name = "io-string-like";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2018 Clinton Mead";
      maintainer = "clintonmead@gmail.com";
      author = "Clinton Mead";
      homepage = "https://github.com/clintonmead/io-string-like#readme";
      url = "";
      synopsis = "Classes to handle Prelude style IO functions for different datatypes";
      description = "The functions in the Prelude such as \"getContents\", \"putStr\" only work for plain Strings.\n\nThere are similar functions in \\\"ByteString\\\" for reading and writing, as well as \\\"Text\\\".\n\nThis requires one to import the appropriate functions, usually qualified, for the particular datatype one is using. Changing the datatype at the very least involves changing import statements across your program.\n\nThe package introduces classes to overload functions like \"getContents\", \"putStr\" over multiple datatypes, so implementations can be changed easily.\n\nAll the code documentation is in \"System.IO.StringLike.Impl\".\n\nAll the other modules are just re-exports.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.text)
        ];
      };
    };
  }