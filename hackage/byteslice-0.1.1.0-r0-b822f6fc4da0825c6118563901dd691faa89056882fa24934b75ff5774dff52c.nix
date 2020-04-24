{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "byteslice"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Andrew Martin";
      maintainer = "andrew.thaddeus@gmail.com";
      author = "Andrew Martin";
      homepage = "https://github.com/andrewthad/byteslice";
      url = "";
      synopsis = "Slicing managed and unmanaged memory";
      description = "This library provides types that allow the user to talk about a slice of\na ByteArray or a MutableByteArray. It also offers UnmanagedBytes, which\nis kind of like a slice into unmanaged memory. However, it is just an\naddress and a length.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
          (hsPkgs."primitive-addr" or ((hsPkgs.pkgs-errors).buildDepError "primitive-addr"))
          ];
        buildable = true;
        };
      };
    }