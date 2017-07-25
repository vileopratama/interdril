<?php

/* theme::partials/metadata */
class __TwigTemplate_a77f77b8f50850507a8718ad6050a22e422d3e0f08a3537ccc3f3875263a329c extends TwigBridge\Twig\Template
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
        echo "<meta charset=\"UTF-8\"/>
<title>";
        // line 2
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFunction('setting_value')->getCallable(), array("streams::name", call_user_func_array($this->env->getFunction('config_get')->getCallable(), array("streams::distribution.name")))), "html", null, true);
        echo "
\t&#8250;";
        // line 3
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFunction('trans')->getCallable(), array($this->getAttribute(($context["template"] ?? null), "meta_title", array()))), "html", null, true);
        echo "</title>
";
        // line 4
        $this->loadTemplate("theme::partials/meta-icon", "theme::partials/metadata", 4)->display($context);
        // line 5
        echo "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />
<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />
<meta name=\"generator\" content=\"";
        // line 7
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFunction('config_get')->getCallable(), array("streams::distribution.name")), "html", null, true);
        echo "\" />
<meta name=\"description\" content=\"";
        // line 8
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFunction('trans')->getCallable(), array($this->getAttribute(($context["template"] ?? null), "meta_description", array()))), "html", null, true);
        echo "\"/>
";
        // line 9
        $this->loadTemplate("theme::partials/stylesheet", "theme::partials/metadata", 9)->display($context);
        // line 11
        echo call_user_func_array($this->env->getFunction('constants')->getCallable(), array());
    }

    public function getTemplateName()
    {
        return "theme::partials/metadata";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  46 => 11,  44 => 9,  40 => 8,  36 => 7,  32 => 5,  30 => 4,  26 => 3,  22 => 2,  19 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("<meta charset=\"UTF-8\"/>
<title>{{ setting_value('streams::name', config_get('streams::distribution.name')) }}
\t&#8250;{{ trans(template.meta_title) }}</title>
{% include \"theme::partials/meta-icon\" %}
<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />
<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />
<meta name=\"generator\" content=\"{{ config_get('streams::distribution.name') }}\" />
<meta name=\"description\" content=\"{{ trans(template.meta_description) }}\"/>
{% include \"theme::partials/stylesheet\" %}
{# Important!! #}
{{ constants() }}", "theme::partials/metadata", "");
    }
}
