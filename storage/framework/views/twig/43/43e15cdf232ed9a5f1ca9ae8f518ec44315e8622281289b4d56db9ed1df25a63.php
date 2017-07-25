<?php

/* E:\xpyrocms\htdocs\interdril\storage\streams/interdril//support/parsed/10a7483a7114dd627850f402d3f893fe.twig */
class __TwigTemplate_2f9b0a8087bcc7658ee8baae8d38bcf25006ef8c56d6475778e9173c7c6f8f60 extends TwigBridge\Twig\Template
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
        echo twig_join_filter($this->getAttribute($this->getAttribute(($context["entry"] ?? null), "keywords", array()), "labels", array()));
    }

    public function getTemplateName()
    {
        return "E:\\xpyrocms\\htdocs\\interdril\\storage\\streams/interdril//support/parsed/10a7483a7114dd627850f402d3f893fe.twig";
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
        return new Twig_Source("{{ entry.keywords.labels|join|raw }}", "E:\\xpyrocms\\htdocs\\interdril\\storage\\streams/interdril//support/parsed/10a7483a7114dd627850f402d3f893fe.twig", "");
    }
}
