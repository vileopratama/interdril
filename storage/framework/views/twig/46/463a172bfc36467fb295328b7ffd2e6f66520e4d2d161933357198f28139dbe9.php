<?php

/* theme::partials/header */
class __TwigTemplate_149528672b2b72d43a2a6356574221a6ac1f617bdeaea232b9a8ce4c28f03129 extends TwigBridge\Twig\Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        $this->parent = false;

        $this->blocks = array(
        );
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        // line 1
        echo "<header id=\"site-header\" class=\"site-header-style-1 header-fixed-support\">
\t<div id=\"mx-header\">
\t\t<div class=\"container\">
\t\t\t<div class=\"row\">
\t\t\t\t<div class=\"mx-header-logo col-md-6 col-sm-6\">
\t\t\t\t\t<div class=\"logo\">
\t\t\t\t\t\t<a href=\"";
        // line 7
        echo $this->env->getExtension('Anomaly\Streams\Platform\StreamsPlugin')->url("/");
        echo "\" title=\"PT.INTERDRIL INDONESIA\" rel=\"home\">
\t\t\t\t\t\t\t<img class=\"logo-default\" src=\"";
        // line 8
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFunction('image_url')->getCallable(), array("theme::images/logo.png")), "html", null, true);
        echo "\" />
\t\t\t\t\t\t\t<img class=\"logo-retina\"  src=\"";
        // line 9
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFunction('image_url')->getCallable(), array("theme::images/logo.png")), "html", null, true);
        echo "\" />
\t\t\t\t\t\t</a>
\t\t\t\t\t</div>
\t\t\t\t</div>
\t\t\t\t<div class=\"mx-header-right col-md-6 col-sm-6\">
\t\t\t\t\t<div class=\"row\">
\t\t\t\t\t\t<div class=\"col-md-12 col-sm-12\">
\t\t\t\t\t\t\t<ul class=\"mx-social social-circle inline\">
\t\t\t\t\t\t\t</ul>
\t\t\t\t\t\t</div>
\t\t\t\t\t</div>
\t\t\t\t</div>
\t\t\t</div>
\t\t</div>
\t</div>
\t<div id=\"mx-nav\">
\t\t<div class=\"container\">
\t\t\t<div class=\"mx-nav-container\">
\t\t\t\t";
        // line 27
        $this->loadTemplate("theme::partials/navigation", "theme::partials/header", 27)->display($context);
        // line 28
        echo "\t\t\t</div>
\t\t</div>
\t</div>
</header>

";
    }

    public function getTemplateName()
    {
        return "theme::partials/header";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  58 => 28,  56 => 27,  35 => 9,  31 => 8,  27 => 7,  19 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("<header id=\"site-header\" class=\"site-header-style-1 header-fixed-support\">
\t<div id=\"mx-header\">
\t\t<div class=\"container\">
\t\t\t<div class=\"row\">
\t\t\t\t<div class=\"mx-header-logo col-md-6 col-sm-6\">
\t\t\t\t\t<div class=\"logo\">
\t\t\t\t\t\t<a href=\"{{ url('/') }}\" title=\"PT.INTERDRIL INDONESIA\" rel=\"home\">
\t\t\t\t\t\t\t<img class=\"logo-default\" src=\"{{ image_url('theme::images/logo.png') }}\" />
\t\t\t\t\t\t\t<img class=\"logo-retina\"  src=\"{{ image_url('theme::images/logo.png') }}\" />
\t\t\t\t\t\t</a>
\t\t\t\t\t</div>
\t\t\t\t</div>
\t\t\t\t<div class=\"mx-header-right col-md-6 col-sm-6\">
\t\t\t\t\t<div class=\"row\">
\t\t\t\t\t\t<div class=\"col-md-12 col-sm-12\">
\t\t\t\t\t\t\t<ul class=\"mx-social social-circle inline\">
\t\t\t\t\t\t\t</ul>
\t\t\t\t\t\t</div>
\t\t\t\t\t</div>
\t\t\t\t</div>
\t\t\t</div>
\t\t</div>
\t</div>
\t<div id=\"mx-nav\">
\t\t<div class=\"container\">
\t\t\t<div class=\"mx-nav-container\">
\t\t\t\t{% include \"theme::partials/navigation\" %}
\t\t\t</div>
\t\t</div>
\t</div>
</header>

", "theme::partials/header", "");
    }
}
