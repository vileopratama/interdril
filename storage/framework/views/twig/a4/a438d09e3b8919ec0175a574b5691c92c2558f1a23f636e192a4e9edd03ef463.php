<?php

/* E:\xpyrocms\htdocs\interdril\core/anomaly/pages-module/resources/views/structure.twig */
class __TwigTemplate_cf218e6e0caec4f592fd7f56d5521ba3b0c85a36c43698b48e1a889701c9c3fc extends TwigBridge\Twig\Template
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
        $context["macro"] = $this->loadTemplate($this->getAttribute(($context["options"] ?? null), "get", array(0 => "macro", 1 => "anomaly.module.pages::macro"), "method"), "E:\\xpyrocms\\htdocs\\interdril\\core/anomaly/pages-module/resources/views/structure.twig", 1);
        // line 2
        echo "
<";
        // line 3
        echo twig_escape_filter($this->env, (($this->getAttribute(($context["options"] ?? null), "list_tag", array())) ? ($this->getAttribute(($context["options"] ?? null), "list_tag", array())) : ("ul")), "html", null, true);
        echo " class=\"";
        echo twig_escape_filter($this->env, $this->getAttribute(($context["options"] ?? null), "list_class", array()), "html", null, true);
        echo "\" id=\"menu-home\">
    ";
        // line 4
        echo $context["macro"]->getlinks((($this->getAttribute(($context["options"] ?? null), "parent", array())) ? ($this->getAttribute(($context["pages"] ?? null), "children", array(0 => $this->getAttribute(($context["options"] ?? null), "parent", array())), "method")) : ($this->getAttribute(($context["pages"] ?? null), "top", array(), "method"))), ($context["pages"] ?? null), ($context["options"] ?? null), 1);
        echo "
</";
        // line 5
        echo twig_escape_filter($this->env, (($this->getAttribute(($context["options"] ?? null), "list_tag", array())) ? ($this->getAttribute(($context["options"] ?? null), "list_tag", array())) : ("ul")), "html", null, true);
        echo ">
";
    }

    public function getTemplateName()
    {
        return "E:\\xpyrocms\\htdocs\\interdril\\core/anomaly/pages-module/resources/views/structure.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  34 => 5,  30 => 4,  24 => 3,  21 => 2,  19 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("{% import options.get('macro', 'anomaly.module.pages::macro') as macro %}

<{{ options.list_tag ?: 'ul' }} class=\"{{ options.list_class }}\" id=\"menu-home\">
    {{ macro.links(options.parent ? pages.children(options.parent) : pages.top(), pages, options, 1) }}
</{{ options.list_tag ?: 'ul' }}>
", "E:\\xpyrocms\\htdocs\\interdril\\core/anomaly/pages-module/resources/views/structure.twig", "");
    }
}
