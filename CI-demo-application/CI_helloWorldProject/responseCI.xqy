xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns1="http://api.ci.com/continuousIntegration";
(:: import schema at "Resources/nxsd_ci.xsd" ::)

declare variable $requestCI as element() (:: schema-element(ns1:requestCI) ::) external;

declare function local:func($requestCI as element() (:: schema-element(ns1:requestCI) ::)) as element() (:: schema-element(ns1:responseCI) ::) {
    <ns1:responseCI>
        <ns1:saludo>{concat("hola: ",fn:data($requestCI/ns1:name))}</ns1:saludo>
    </ns1:responseCI>
};

local:func($requestCI)
