# firefuzzer
Automatically exported from code.google.com/p/firefuzzer


# firefuzzer
Automatically exported from code.google.com/p/firefuzzer

The abstract at the original project page :
 
 Concept: In this age of the excessive INTERNET-dependency, the Web browser is the most basic common unit of the Internet experience for much of the global community. Also, it is the one which is the most attacked from external agencies. Thus, it is critical to test the Browser's ability to be secure enough. Thus, to audit the security mechanisms in place within conventional Web Browsers, we plan to use a fuzzer codenamed 'FireFuzzer'. A fuzzer (also known as 'Fault Injectors') is a typically a tool that attempts to discover security vulnerabilities by injecting random input into the WEB application. If the program contains a vulnerability that can lead to an exception, crash or server error (in the case of web apps), it can be determined that a vulnerability has been discovered. Conventional Fuzzers are good at finding buffer overflow, DoS, SQL Injection, XSS, and Format String bugs.

Firefuzzer is expected to perform black-box scans over the web pages. It will target the web page URL which is passed as an argument via command line and will mark the textboxes within the HTML forms to inject unacceptable data. Then, FireFuzzer will inject random textual data and submit the forms to see whether Exceptions are generated.

Intended vulnerabilities expected to be targeted include:

    Buffer Overflow
    Database Injection (SQL Injections)
    File Handling Errors (fopen, readfile…)
    XSS (Cross Site Scripting) Injection 

Cross-site Scripting is commonly used to cause the execution of scripting code (controlled by the attacker) in order to steal information from the victim (e.g. current logged in session information) or cause the installation of Trojan horse software that can be later used to take full control of the victims host.

SQL Injection is the process of injecting SQL language code within data requests that result in an application’s back-end database server either surrendering confidential data, or cause the execution of malicious scripting content on the database that results in a host compromise.

Description: Firefuzzer is a penetration testing tool. The aim of the fuzzer is to discover unknown vulnerabilities in web applications. As per the requirement of the Project Proposal, the FireFuzzer application would be executed from the Command Prompt. It has two major modules: 1)Buffer Overflow 2)Cross Site Scripting (XSS)

In the case of Buffer Overflow module, Firefuzzer creates random, possibly invalid text String and inserts into html input textboxes. All the Forms present on the given page are then submitted one after the other and appropriate look-up is performed for the status code response. Warnings are given for specific HTTP Codes. For a normal web page which loads properly without any error, HTTP Status Code 200 is sent as a response which means OK. HTTP Status Code 500 series of errors indicate exceptions caused at the Server End.

In the case of Cross-Site Scripting module, Firefuzzer will also target SQL injections where SQL commands are injected into the Login form component. Attacker can also effectively insert code and modify SQL command. These commands are then passed to Server end. Again, Look-ups are performed for the status code response and appropriate warnings are issued. 
 
