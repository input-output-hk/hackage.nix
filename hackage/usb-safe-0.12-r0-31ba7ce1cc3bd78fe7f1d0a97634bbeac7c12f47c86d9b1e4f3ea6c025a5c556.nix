{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "usb-safe"; version = "0.12"; };
      license = "BSD-3-Clause";
      copyright = "2009–2010 Bas van Dijk";
      maintainer = "Bas van Dijk <v.dijk.bas@gmail.com>";
      author = "Bas van Dijk <v.dijk.bas@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Type-safe communication with USB devices.";
      description = "The @usb@ package provides a standard Haskell abstraction layer over\n@bindings-libusb@ providing: abstract types instead of @Ptr@s, automatic\nmarshalling and unmarshalling, automatic garbage collection,\nexceptions instead of integer return codes, etc..\n\nWhile all that is very nice there are still some things that you can\ndo wrong. For example doing I/O with a closed device or reading from\nor writing to an endpoint which doesn't belong to the claimed\ninterface. Or reading from an Out endpoint or writing to an In\nendpoint.\n\n@usb-safe@ provides the following guarantees:\n\n* You can't reference handles to devices that are closed. In other words: no\nI/O with closed handles is possible.\n\n* The programmer specifies the /region/ in which devices should remain open. On\nexit from the region the opened devices will be closed automatically.\n\n* You can't reference handles to configurations that have not been set.\n\n* You can't reference handles to interfaces that have not been claimed.\n\n* Just like with devices, the programmer can specify the region in\nwhich interfaces should remain claimed. On exit from the region\nthe claimed interfaces will be released automatically.\n\n* You can't reference handles to alternates that have not been set.\n\n* You can't reference endpoints that don't belong to a setted alternate.\n\n* You can't read from an endpoint with an Out transfer direction.\n\n* You can't write to an endpoint with an In transfer direction.\n\n* You can't read from or write to endpoints with the unsupported transfer\ntypes Control and Isochronous. Only I/O with endpoints with the Bulk and\nInterrupt transfer types is allowed.\n\nThe primary technique used in usb-safe is called \\\"Lightweight monadic\nregions\\\" which was invented by Oleg Kiselyov and Chung-chieh Shan.\nSee:\n\n<http://okmij.org/ftp/Haskell/regions.html#light-weight>\n\nThis technique is implemented in the @regions@ package which is\nre-exported from @usb-safe@.\n\nSee the @usb-safe-examples@ package for examples how to use this library:\n\n@darcs get@ <http://code.haskell.org/~basvandijk/code/usb-safe-examples>";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base-unicode-symbols" or (errorHandler.buildDepError "base-unicode-symbols"))
          (hsPkgs."usb" or (errorHandler.buildDepError "usb"))
          (hsPkgs."usb-enumerator" or (errorHandler.buildDepError "usb-enumerator"))
          (hsPkgs."iteratee" or (errorHandler.buildDepError "iteratee"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."regions" or (errorHandler.buildDepError "regions"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
        ];
        buildable = true;
      };
    };
  }