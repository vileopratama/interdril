<?php

/* theme::layouts.default */
class __TwigTemplate_aa88beb2535f3f07f2163e5629cfe790cbc57886557e090d0a934ee07cc84e1c extends TwigBridge\Twig\Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        $this->parent = false;

        $this->blocks = array(
            'content' => array($this, 'block_content'),
        );
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        // line 1
        ob_start();
        // line 2
        echo "<!doctype html>

<!--[if lt IE 7]>
<html class=\"nojs ms lt_ie7\" lang=\"en\"><![endif]-->
<!--[if IE 7]>
<html class=\"nojs ms ie7\" lang=\"en\"><![endif]-->
<!--[if IE 8]>
<html class=\"nojs ms ie8\" lang=\"en\"><![endif]-->
<!--[if gt IE 8]>
<html class=\"nojs ms\" lang=\"en\"><![endif]-->
<html>

    <head>
        ";
        // line 15
        $this->loadTemplate("theme::partials/metadata", "theme::layouts.default", 15)->display($context);
        // line 16
        echo "        ";
        $this->loadTemplate("theme::partials/scripts", "theme::layouts.default", 16)->display($context);
        // line 17
        echo "    </head>
    <body class=\"home page-template-default page page-id-16 wide-layout unselectable wpb-js-composer js-comp-ver-5.1.1 vc_responsive\">
        <div class=\"wrapper\">
            <div id=\"header-wrap\">
                ";
        // line 21
        $this->loadTemplate("theme::partials/header", "theme::layouts.default", 21)->display($context);
        // line 22
        echo "\t            ";
        $this->loadTemplate("theme::partials/mobile/navigation", "theme::layouts.default", 22)->display($context);
        // line 23
        echo "            </div>
            <div id=\"page-content-wrap\">
                <div id=\"page\" class=\"container\">
                    ";
        // line 26
        $this->loadTemplate("theme::partials/messages", "theme::layouts.default", 26)->display($context);
        // line 27
        echo "                    ";
        $this->displayBlock('content', $context, $blocks);
        // line 28
        echo "                </div>
            </div>
            <div class=\"footer-wrap\">
                <div id=\"site-footer-bottom\">
                    ";
        // line 32
        $this->loadTemplate("theme::partials/footer", "theme::layouts.default", 32)->display($context);
        // line 33
        echo "                </div>
            </div>
        </div>
    </body>
</html>
";
        $extension = $this->env->getExtension(\nochso\HtmlCompressTwig\Extension::class);
        echo $extension->compress($this->env, ob_get_clean());
    }

    // line 27
    public function block_content($context, array $blocks = array())
    {
        echo " ";
    }

    public function getTemplateName()
    {
        return "theme::layouts.default";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  82 => 27,  71 => 33,  69 => 32,  63 => 28,  60 => 27,  58 => 26,  53 => 23,  50 => 22,  48 => 21,  42 => 17,  39 => 16,  37 => 15,  22 => 2,  20 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("{% htmlcompress %}
<!doctype html>

<!--[if lt IE 7]>
<html class=\"nojs ms lt_ie7\" lang=\"en\"><![endif]-->
<!--[if IE 7]>
<html class=\"nojs ms ie7\" lang=\"en\"><![endif]-->
<!--[if IE 8]>
<html class=\"nojs ms ie8\" lang=\"en\"><![endif]-->
<!--[if gt IE 8]>
<html class=\"nojs ms\" lang=\"en\"><![endif]-->
<html>

    <head>
        {% include \"theme::partials/metadata\" %}
        {% include \"theme::partials/scripts\" %}
    </head>
    <body class=\"home page-template-default page page-id-16 wide-layout unselectable wpb-js-composer js-comp-ver-5.1.1 vc_responsive\">
        <div class=\"wrapper\">
            <div id=\"header-wrap\">
                {% include \"theme::partials/header\" %}
\t            {% include \"theme::partials/mobile/navigation\" %}
            </div>
            <div id=\"page-content-wrap\">
                <div id=\"page\" class=\"container\">
                    {% include \"theme::partials/messages\" %}
                    {% block content %} {% endblock %}
                </div>
            </div>
            <div class=\"footer-wrap\">
                <div id=\"site-footer-bottom\">
                    {% include \"theme::partials/footer\" %}
                </div>
            </div>
        </div>
    </body>
</html>
{% endhtmlcompress %}
", "theme::layouts.default", "");
    }
}
