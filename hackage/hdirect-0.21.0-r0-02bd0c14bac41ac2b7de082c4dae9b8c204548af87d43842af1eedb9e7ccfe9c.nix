{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "hdirect"; version = "0.21.0"; };
      license = "BSD-3-Clause";
      copyright = "1998-2003 University of Glasgow and Sigbjorn Finne. 2010 Don Stewart";
      maintainer = "Don Stewart <dons@galois.com>";
      author = "Sigbjorn Finne";
      homepage = "http://www.haskell.org/hdirect/";
      url = "";
      synopsis = "An IDL compiler for Haskell";
      description = "HaskellDirect is an IDL compiler for Haskell, which offers a helping\nhand to the Haskell programmer that wants to better interact with\nand reuse external code.\n\nInterfacing Haskell code to external code involves the conversion of\nvalues between the Haskell world and the outside, as data\nrepresentations and details of how memory is managed, are worlds\napart at times. Manually writing the boilerplate code that takes\ncare of this conversion is about as exciting as watching grass grow\nand, as a result, error prone.\n\nUsing an Interface Definition Language (IDL) as basis, HaskellDirect\nautomates the generation of such impedance matching code, generating\nall the necessary marshaling code for you.\n\nWith IDL, the functionality provided by a programming interface is\nspecified in a programming language neutral framework. The\nHaskellDirect IDL compiler converts this specification into a set of\nmethod stubs. Depending on how the compiler is invoked, these stubs\ncan be used to:\n\n* Call upon external functions from within Haskell, HaskellDirect creates bindings to external (C-callable) libraries.\n\n* Let external code call upon Haskell functions, HaskellDirect creates foreign/external language interfaces to Haskell libraries.\n\n* Call COM (Microsoft's Component Object Model) methods from Haskell, HaskellDirect helps you use Microsoft COM components from within Haskell.  The generated stubs can be used with Hugs98 or GHC.\n\n* Create COM method wrappers, HaskellDirect packages up Haskell code as COM components.\n\nThe HaskellDirect IDL compiler currently groks both the OSF DCE\ndialect of IDL (including the various extensions introduced by the\nMicrosoft IDL compiler) and the OMG IIOP/CORBA dialect. (Only the\nformer can be used for describing COM interfaces.)\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.happy or (pkgs.buildPackages.happy or ((hsPkgs.pkgs-errors).buildToolDepError "happy")))
          ];
        buildable = true;
        };
      exes = {
        "hdirect" = {
          depends = [
            (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.happy or (pkgs.buildPackages.happy or ((hsPkgs.pkgs-errors).buildToolDepError "happy")))
            ];
          buildable = true;
          };
        };
      };
    }