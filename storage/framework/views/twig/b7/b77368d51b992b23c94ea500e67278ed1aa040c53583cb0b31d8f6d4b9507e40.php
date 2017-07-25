<?php

/* E:\xpyrocms\htdocs\interdril\storage\streams/interdril//support/parsed/c2669c465e9b30ac3f1b82404b830174.twig */
class __TwigTemplate_4c746fdf297baf8222ff86a94fc145bd73d3d84243dbc5ec05dc7a251c891f35 extends TwigBridge\Twig\Template
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
        echo $this->getAttribute($this->getAttribute(($context["entry"] ?? null), "image", array()), "preview", array(0 => 200, 1 => 150), "method");
    }

    public function getTemplateName()
    {
        return "E:\\xpyrocms\\htdocs\\interdril\\storage\\streams/interdril//support/parsed/c2669c465e9b30ac3f1b82404b830174.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  19 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("{{ entry.image.preview(200,150)|raw }}", "E:\\xpyrocms\\htdocs\\interdril\\storage\\streams/interdril//support/parsed/c2669c465e9b30ac3f1b82404b830174.twig", "");
    }
}
