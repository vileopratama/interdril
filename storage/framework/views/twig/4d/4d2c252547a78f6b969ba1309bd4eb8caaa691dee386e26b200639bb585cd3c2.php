<?php

/* streams::form/partials/heading */
class __TwigTemplate_588763516289654eb12c6534797eb2b9299ce0bf916b664912ad044e1e590ba2 extends TwigBridge\Twig\Template
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
        if ($this->getAttribute($this->getAttribute(($context["form"] ?? null), "options", array()), "title", array())) {
            // line 2
            echo "    <div class=\"card\">
        <div class=\"card-block\">
            <h4 class=\"card-title\">
                ";
            // line 5
            echo call_user_func_array($this->env->getFunction('trans')->getCallable(), array($this->getAttribute($this->getAttribute(($context["form"] ?? null), "options", array()), "title", array())));
            echo "

                ";
            // line 7
            if ($this->getAttribute($this->getAttribute(($context["form"] ?? null), "options", array()), "description", array())) {
                // line 8
                echo "                    <small>
                        <br>";
                // line 9
                echo call_user_func_array($this->env->getFunction('trans')->getCallable(), array($this->getAttribute($this->getAttribute(($context["form"] ?? null), "options", array()), "description", array())));
                echo "
                    </small>
                ";
            }
            // line 12
            echo "            </h4>
        </div>
    </div>
";
        }
    }

    public function getTemplateName()
    {
        return "streams::form/partials/heading";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  42 => 12,  36 => 9,  33 => 8,  31 => 7,  26 => 5,  21 => 2,  19 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("{% if form.options.title %}
    <div class=\"card\">
        <div class=\"card-block\">
            <h4 class=\"card-title\">
                {{ trans(form.options.title)|raw }}

                {% if form.options.description %}
                    <small>
                        <br>{{ trans(form.options.description)|raw }}
                    </small>
                {% endif %}
            </h4>
        </div>
    </div>
{% endif %}
", "streams::form/partials/heading", "");
    }
}
