<?php

/* E:\xpyrocms\htdocs\interdril\vendor\anomaly\streams-platform\src\View\Command/../../../resources/views/form/standard.twig */
class __TwigTemplate_5097ffafe001d45fb4b9856a6d9402e4df3affab03562eaad52c3ba199d0fdef extends TwigBridge\Twig\Template
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
        echo call_user_func_array($this->env->getFunction('asset_add')->getCallable(), array("add", "scripts.js", "streams::js/form/translations.js"));
        echo "

";
        // line 3
        $this->displayBlock('content', $context, $blocks);
    }

    public function block_content($context, array $blocks = array())
    {
        // line 4
        echo "
    ";
        // line 5
        echo call_user_func_array($this->env->getFunction('form_open')->getCallable(), array("open", array("class" => "form", "enctype" => "multipart/form-data", "url" => (($this->getAttribute($this->getAttribute(($context["form"] ?? null), "options", array()), "url", array())) ? ($this->getAttribute($this->getAttribute(($context["form"] ?? null), "options", array()), "url", array())) : (call_user_func_array($this->env->getFunction('url_full')->getCallable(), array("full")))))));
        echo "

    ";
        // line 7
        echo call_user_func_array($this->env->getFunction('view')->getCallable(), array("streams::form/partials/heading", array("form" => ($context["form"] ?? null))));
        echo "

    ";
        // line 9
        echo call_user_func_array($this->env->getFunction('view')->getCallable(), array("streams::form/partials/layout", array("form" => ($context["form"] ?? null))));
        echo "

    ";
        // line 11
        echo call_user_func_array($this->env->getFunction('view')->getCallable(), array("streams::buttons/buttons", array("buttons" => $this->getAttribute(($context["form"] ?? null), "actions", array()))));
        echo "

    ";
        // line 13
        echo call_user_func_array($this->env->getFunction('form_close')->getCallable(), array("close"));
        echo "

";
    }

    public function getTemplateName()
    {
        return "E:\\xpyrocms\\htdocs\\interdril\\vendor\\anomaly\\streams-platform\\src\\View\\Command/../../../resources/views/form/standard.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  54 => 13,  49 => 11,  44 => 9,  39 => 7,  34 => 5,  31 => 4,  25 => 3,  20 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("{{ asset_add(\"scripts.js\", \"streams::js/form/translations.js\") }}

{% block content %}

    {{ form_open({'class': 'form', 'enctype': 'multipart/form-data', 'url': form.options.url ?: url_full()}) }}

    {{ view(\"streams::form/partials/heading\", {'form': form}) }}

    {{ view(\"streams::form/partials/layout\", {'form': form}) }}

    {{ view(\"streams::buttons/buttons\", {'buttons': form.actions}) }}

    {{ form_close() }}

{% endblock %}
", "E:\\xpyrocms\\htdocs\\interdril\\vendor\\anomaly\\streams-platform\\src\\View\\Command/../../../resources/views/form/standard.twig", "");
    }
}
