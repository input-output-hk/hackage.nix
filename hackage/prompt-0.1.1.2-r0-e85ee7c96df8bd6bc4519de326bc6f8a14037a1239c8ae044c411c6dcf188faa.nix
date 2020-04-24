{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "prompt"; version = "0.1.1.2"; };
      license = "MIT";
      copyright = "(c) 2015 Justin Le";
      maintainer = "justin@jle.im";
      author = "Justin Le";
      homepage = "https://github.com/mstksg/prompt";
      url = "";
      synopsis = "Monad (and transformer) for deferred-effect pure\nprompt-response queries";
      description = "Monad (and transformer) for delayed-effect \"pure\"\nprompt-and-response queries.\n\nAllows you to specify programs that might query a\ndatabase, talk to stdio, etc., without ever involving IO\nor opening the door to arbitrary IO.  Write a potentially\npure computation describing prompting interactions, etc.,\nwithout having your type actually do any IO or involve\nitself with IO or any effectful context.\n\nUseful as a source of \"things from IO\", without ever\nactually involving IO or arbitrary IO itself; only\nexecuting a specific subset of IO (or State, etc.) that\nyou yourself, the caller, specifies explicitly.  Safer\nand more meaningful type.\n\nFor more information and instructions on usage with\nexamples, see <https://github.com/mstksg/prompt the README>.\n\nNot quite related to the /MonadPrompt/ library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."base-compat" or ((hsPkgs.pkgs-errors).buildDepError "base-compat"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."transformers-compat" or ((hsPkgs.pkgs-errors).buildDepError "transformers-compat"))
          ];
        buildable = true;
        };
      };
    }