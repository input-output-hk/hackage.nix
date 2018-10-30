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
        name = "erlang";
        version = "0.2.2";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Artúr Poór <gombocarti@gmail.com>";
      author = "Eric Sessoms <nubgames@gmail.com>";
      homepage = "http://github.com/gombocarti/erlang-ffi";
      url = "";
      synopsis = "FFI interface to Erlang.";
      description = "Speaks the Erlang network protocol and impersonates an Erlang node\non the network.  Fully capable of bi-directional communication with\nErlang.  Erlang types are, as far as reasonable, mapped to Haskell\ntypes.  Messages to Erlang are just function calls in Haskell, and\nmessages from Erlang are delivered to MVars.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.MissingH)
          (hsPkgs.network)
          (hsPkgs.random)
        ];
      };
    };
  }