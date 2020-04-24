{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "linux-ptrace"; version = "0.1.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "zygoloid@metafoo.co.uk";
      author = "Richard Smith";
      homepage = "";
      url = "";
      synopsis = "Wrapping of Linux' ptrace(2).";
      description = "An interface for using ptrace to inspect the state of other processes, under Linux.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."posix-waitpid" or ((hsPkgs.pkgs-errors).buildDepError "posix-waitpid"))
          (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."mmap" or ((hsPkgs.pkgs-errors).buildDepError "mmap"))
          ];
        buildable = true;
        };
      };
    }