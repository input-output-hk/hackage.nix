{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { example-client = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "libssh2-conduit"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "portnov84@rambler.ru";
      author = "IlyaPortnov";
      homepage = "https://github.com/portnov/libssh2-hs";
      url = "";
      synopsis = "Conduit wrappers for libssh2 FFI bindings (see libssh2 package).";
      description = "This package provides Conduit interface (see conduit package) for\nlibssh2 FFI bindings (see libssh2 package). This allows one to\nreceive data from SSH channels lazily, without need to read\nall channel output to the memory.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
          (hsPkgs."libssh2" or ((hsPkgs.pkgs-errors).buildDepError "libssh2"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        buildable = true;
        };
      exes = {
        "hs-ssh-client" = {
          depends = (pkgs.lib).optionals (flags.example-client) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."libssh2" or ((hsPkgs.pkgs-errors).buildDepError "libssh2"))
            (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."libssh2-conduit" or ((hsPkgs.pkgs-errors).buildDepError "libssh2-conduit"))
            (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
            (hsPkgs."conduit-combinators" or ((hsPkgs.pkgs-errors).buildDepError "conduit-combinators"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            ];
          buildable = if flags.example-client then true else false;
          };
        };
      };
    }